.class final Landroidx/navigation/NavType$5;
.super Landroidx/navigation/NavType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavType<",
        "[J>;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Landroidx/navigation/NavType;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 411
    invoke-virtual {p0, p1, p2}, Landroidx/navigation/NavType$5;->get(Landroid/os/Bundle;Ljava/lang/String;)[J

    move-result-object p1

    return-object p1
.end method

.method public final get(Landroid/os/Bundle;Ljava/lang/String;)[J
    .locals 0

    .line 419
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    check-cast p1, [J

    return-object p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "long[]"

    return-object v0
.end method

.method public final bridge synthetic parseValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 411
    invoke-virtual {p0, p1}, Landroidx/navigation/NavType$5;->parseValue(Ljava/lang/String;)[J

    move-result-object p1

    return-object p1
.end method

.method public final parseValue(Ljava/lang/String;)[J
    .locals 1

    .line 425
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Arrays don\'t support default values."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic put(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 411
    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Landroidx/navigation/NavType$5;->put(Landroid/os/Bundle;Ljava/lang/String;[J)V

    return-void
.end method

.method public final put(Landroid/os/Bundle;Ljava/lang/String;[J)V
    .locals 0

    .line 414
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    return-void
.end method
