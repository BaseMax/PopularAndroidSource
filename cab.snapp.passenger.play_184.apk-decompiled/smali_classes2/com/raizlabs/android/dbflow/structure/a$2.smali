.class final Lcom/raizlabs/android/dbflow/structure/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/raizlabs/android/dbflow/structure/a;->delete()Z
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
.field final synthetic a:Lcom/raizlabs/android/dbflow/structure/a;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/structure/a;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/structure/a$2;->a:Lcom/raizlabs/android/dbflow/structure/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processModel(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;",
            "Lcom/raizlabs/android/dbflow/structure/b/i;",
            ")V"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/structure/a$2;->a:Lcom/raizlabs/android/dbflow/structure/a;

    .line 1018
    invoke-virtual {v0}, Lcom/raizlabs/android/dbflow/structure/a;->a()Lcom/raizlabs/android/dbflow/structure/f;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/f;->delete(Ljava/lang/Object;Lcom/raizlabs/android/dbflow/structure/b/i;)Z

    return-void
.end method
