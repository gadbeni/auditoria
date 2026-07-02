<?php

namespace App\Http\Controllers;

use Illuminate\Http\UploadedFile;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

class StorageController extends Controller
{
    /**
     * Store an uploaded file on the active disk (s3 or local public) and
     * return the relative key saved in the `file` column.
     */
    // public function file(UploadedFile $file, string $folder, ?string $disk = null): string
    // {
    //     $disk        = $disk ?? config('filesystems.default');
    //     $ext         = $file->getClientOriginalExtension();
    //     $newFileName = Str::random(20) . time() . '.' . $ext;
    //     $directory   = $folder . '/' . date('FY');

    //     // putFileAs streams the file (no full read into memory) and returns
    //     // the relative key, e.g. "publications/July2026/abc123.pdf".
    //     return Storage::disk($disk)->putFileAs($directory, $file, $newFileName, 'public');
    // }

    public function file(UploadedFile $file, string $folder, string $disk = 'public'): string
    {
        $ext         = $file->getClientOriginalExtension();
        $newFileName = Str::random(20) . time() . '.' . $ext;
        $directory   = $folder . '/' . date('FY');
        $path        = $directory . '/' . $newFileName;

        $isS3        = env('FILESYSTEM_DRIVER') == 's3';
        $activeDisk  = $isS3 ? 's3' : $disk;

        Storage::disk($activeDisk)->makeDirectory($directory);
        Storage::disk($activeDisk)->put($path, file_get_contents($file), 'public');

        if ($isS3) {
            $root = env('AWS_ROOT') ? env('AWS_ROOT') . '/' : '';
            return env('AWS_ENDPOINT') . '/' . env('AWS_BUCKET') . '/' . $root . $path;
        }

        return $path;
    }

    /**
     * Resolve the public URL for a stored value. Hybrid aware:
     *  - a full URL (http...)  -> new file on S3, use as-is
     *  - a relative key        -> legacy file on the local server, serve from /storage
     *
     * New uploads are persisted as full S3 URLs by Publication's saving hook,
     * so this resolver stays a pure string operation (no disk/API calls).
     */
    // public static function url(?string $key): ?string
    // {
    //     if (empty($key) || $key === '[]') {
    //         return null;
    //     }

    //     if (Str::startsWith($key, 'http')) {
    //         return $key;
    //     }

    //     return asset('storage/' . str_replace('\\', '/', $key));
    // }

    public static function url(?string $key): ?string
    {
        if (empty($key) || $key === '[]') {
            return null;
        }

        if (Str::startsWith($key, 'http')) {
            return $key;
        }

        return asset('storage/' . $key);
    }
}
