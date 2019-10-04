.class final Lcom/raizlabs/android/dbflow/d/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/d/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/d/c;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/d/c$2;->a:Lcom/raizlabs/android/dbflow/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/c$2;->a:Lcom/raizlabs/android/dbflow/d/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/d/c;->a(Lcom/raizlabs/android/dbflow/d/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/d/c$2;->a:Lcom/raizlabs/android/dbflow/d/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/d/c;->a(Lcom/raizlabs/android/dbflow/d/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/raizlabs/android/dbflow/structure/b/a/g$c;->onSuccess(Lcom/raizlabs/android/dbflow/structure/b/a/g;)V

    :cond_0
    return-void
.end method
