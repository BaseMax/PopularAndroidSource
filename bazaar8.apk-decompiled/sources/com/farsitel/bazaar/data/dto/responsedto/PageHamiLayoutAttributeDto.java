package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;

/* compiled from: FehrestResponseDto.kt */
public final class PageHamiLayoutAttributeDto {
    @c("background")
    public final String background;
    @c("textColor")
    public final String textColor;

    public PageHamiLayoutAttributeDto(String str, String str2) {
        this.background = str;
        this.textColor = str2;
    }

    public final String getBackground() {
        return this.background;
    }

    public final String getTextColor() {
        return this.textColor;
    }
}
