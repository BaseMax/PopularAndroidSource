.class final Lcom/ihsanbal/logging/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method