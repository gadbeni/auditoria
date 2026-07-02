<div class="doc-list">
    @forelse ($list as $item)
        @php
            $link = null; $name = null; $ext = 'pdf';
            if($item->file){
                $file = json_decode($item->file);
                if(is_array($file) && count($file) > 0){
                    $link = $file[0]->download_link;
                    $name = $file[0]->original_name ?? null;
                    if($name){ $ext = strtolower(pathinfo($name, PATHINFO_EXTENSION)); }
                }
            }
            $url = \App\Http\Controllers\StorageController::url($link);
            $icon = in_array($ext, ['jpg','jpeg','png','gif','webp']) ? 'bi-file-earmark-image'
                  : (in_array($ext, ['xls','xlsx','csv']) ? 'bi-file-earmark-spreadsheet'
                  : (in_array($ext, ['doc','docx']) ? 'bi-file-earmark-word' : 'bi-file-earmark-pdf'));
        @endphp
        <div class="doc-card">
            <div class="doc-ico"><i class="bi {{ $icon }}"></i></div>
            <div class="doc-body">
                <h5>{{ $item->title }}</h5>
                @if($item->description)
                    <p class="doc-desc">{!! strip_tags($item->description) !!}</p>
                @endif
                <div class="doc-meta">
                    <i class="bi bi-calendar3"></i> {{ date('d/m/Y', strtotime($item->publish_date)) }}
                    <span class="mx-2">·</span>
                    {{ \Carbon\Carbon::parse($item->publish_date)->diffForHumans() }}
                    @if($name)<span class="mx-2">·</span><i class="bi bi-paperclip"></i> {{ $name }}@endif
                </div>
            </div>
            <a href="{{ $url }}" title="{{ $name }}" target="_blank" class="doc-dl {{ $url ? '' : 'disabled' }}">
                <i class="bi bi-cloud-download"></i> Descargar
            </a>
        </div>
    @empty
        <div class="doc-empty">
            <i class="bi bi-inbox"></i>
            <h3 class="text-muted">No se encontraron resultados</h3>
        </div>
    @endforelse
</div>

<div class="d-flex justify-content-center mt-4">
    {{ $list->links() }}
</div>

<script>
    $('.page-link').click(function(e){
        e.preventDefault();
        let link = $(this).attr('href');
        if(link){
            page = link.split('=')[1];
            getList(page);
        }
    });
</script>
