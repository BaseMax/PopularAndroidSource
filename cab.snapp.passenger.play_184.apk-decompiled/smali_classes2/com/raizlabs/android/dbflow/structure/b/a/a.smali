.class public final Lcom/raizlabs/android/dbflow/structure/b/a/a;
.super Lcom/raizlabs/android/dbflow/d/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 2

    .line 15
    new-instance v0, Lcom/raizlabs/android/dbflow/structure/b/a/b;

    const-string v1, "DBFlow Transaction Queue"

    invoke-direct {v0, v1}, Lcom/raizlabs/android/dbflow/structure/b/a/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/raizlabs/android/dbflow/d/a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/d;Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/structure/b/a/d;Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/raizlabs/android/dbflow/d/a;-><init>(Lcom/raizlabs/android/dbflow/structure/b/a/d;Lcom/raizlabs/android/dbflow/config/c;)V

    return-void
.end method
