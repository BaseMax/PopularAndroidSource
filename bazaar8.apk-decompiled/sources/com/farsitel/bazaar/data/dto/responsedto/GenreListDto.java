package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;
import java.util.List;

/* compiled from: FehrestResponseDto.kt */
public final class GenreListDto {
    @c("genreList")
    public final List<PageGenreRowDto> genres;

    public GenreListDto(List<PageGenreRowDto> list) {
        j.b(list, "genres");
        this.genres = list;
    }

    public final List<PageGenreRowDto> getGenres() {
        return this.genres;
    }
}
