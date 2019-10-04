package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.f;
import h.f.b.j;

/* compiled from: PropertiesResponseDto.kt */
public final class ErrorResponseDto {
    @c("properties")
    public final PropertiesResponseDto properties;

    public ErrorResponseDto() {
        this(null, 1, null);
    }

    public ErrorResponseDto(PropertiesResponseDto propertiesResponseDto) {
        this.properties = propertiesResponseDto;
    }

    public static /* synthetic */ ErrorResponseDto copy$default(ErrorResponseDto errorResponseDto, PropertiesResponseDto propertiesResponseDto, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            propertiesResponseDto = errorResponseDto.properties;
        }
        return errorResponseDto.copy(propertiesResponseDto);
    }

    public final PropertiesResponseDto component1() {
        return this.properties;
    }

    public final ErrorResponseDto copy(PropertiesResponseDto propertiesResponseDto) {
        return new ErrorResponseDto(propertiesResponseDto);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ErrorResponseDto) && j.a((Object) this.properties, (Object) ((ErrorResponseDto) obj).properties));
    }

    public final PropertiesResponseDto getProperties() {
        return this.properties;
    }

    public int hashCode() {
        PropertiesResponseDto propertiesResponseDto = this.properties;
        if (propertiesResponseDto != null) {
            return propertiesResponseDto.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "ErrorResponseDto(properties=" + this.properties + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ErrorResponseDto(PropertiesResponseDto propertiesResponseDto, int i2, f fVar) {
        this((i2 & 1) != 0 ? null : propertiesResponseDto);
    }
}
