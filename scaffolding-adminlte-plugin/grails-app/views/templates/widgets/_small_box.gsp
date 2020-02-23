<div class="small-box ${style ?: 'bg-info'}">
    <div class="inner">
        <h3>${value}</h3>
        <p>${label}</p>
    </div>
    <div class="icon">
        <i class="fas ${icon ?: 'fa-info-circle'}"></i>
    </div>
    <g:if test="${link}">
        <a href="${link}" class="small-box-footer">
            More info <i class="fas fa-arrow-circle-right"></i>
        </a>
    </g:if>
</div>