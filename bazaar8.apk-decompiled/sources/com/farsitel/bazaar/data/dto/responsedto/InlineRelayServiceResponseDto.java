package com.farsitel.bazaar.data.dto.responsedto;

import c.e.d.a.c;
import h.f.b.j;

/* compiled from: InlineRelayServiceResponseDto.kt */
public final class InlineRelayServiceResponseDto {
    @c("reply")
    public final String reply;

    public InlineRelayServiceResponseDto(String str) {
        j.b(str, "reply");
        this.reply = str;
    }

    public static /* synthetic */ InlineRelayServiceResponseDto copy$default(InlineRelayServiceResponseDto inlineRelayServiceResponseDto, String str, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = inlineRelayServiceResponseDto.reply;
        }
        return inlineRelayServiceResponseDto.copy(str);
    }

    public final String component1() {
        return this.reply;
    }

    public final InlineRelayServiceResponseDto copy(String str) {
        j.b(str, "reply");
        return new InlineRelayServiceResponseDto(str);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof InlineRelayServiceResponseDto) && j.a((Object) this.reply, (Object) ((InlineRelayServiceResponseDto) obj).reply));
    }

    public final String getReply() {
        return this.reply;
    }

    public int hashCode() {
        String str = this.reply;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "InlineRelayServiceResponseDto(reply=" + this.reply + ")";
    }
}
