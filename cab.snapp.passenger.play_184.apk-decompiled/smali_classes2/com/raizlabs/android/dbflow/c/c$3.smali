.class final Lcom/raizlabs/android/dbflow/c/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/raizlabs/android/dbflow/structure/b/a/e$c<",
        "TTModel;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/c/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/c/c;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$3;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processModel(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 620
    iget-object p2, p0, Lcom/raizlabs/android/dbflow/c/c$3;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-virtual {p2}, Lcom/raizlabs/android/dbflow/c/c;->a()Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/raizlabs/android/dbflow/structure/f;->delete(Ljava/lang/Object;)Z

    return-void
.end method
