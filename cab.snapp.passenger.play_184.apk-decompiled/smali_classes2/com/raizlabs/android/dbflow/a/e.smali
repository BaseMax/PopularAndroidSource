.class public final Lcom/raizlabs/android/dbflow/a/e;
.super Lcom/raizlabs/android/dbflow/a/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/raizlabs/android/dbflow/a/h<",
        "Ljava/lang/String;",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic getDBValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/a/e;->getDBValue(Ljava/lang/Character;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getDBValue(Ljava/lang/Character;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 10
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    aput-char p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getModelValue(Ljava/lang/String;)Ljava/lang/Character;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic getModelValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/raizlabs/android/dbflow/a/e;->getModelValue(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object p1

    return-object p1
.end method
