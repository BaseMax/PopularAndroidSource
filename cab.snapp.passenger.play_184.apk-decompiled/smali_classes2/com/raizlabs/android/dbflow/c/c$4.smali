.class final Lcom/raizlabs/android/dbflow/c/c$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/raizlabs/android/dbflow/structure/b/a/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/raizlabs/android/dbflow/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/raizlabs/android/dbflow/c/c;


# direct methods
.method constructor <init>(Lcom/raizlabs/android/dbflow/c/c;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/raizlabs/android/dbflow/c/c$4;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$4;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->a(Lcom/raizlabs/android/dbflow/c/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 629
    iget-object v0, p0, Lcom/raizlabs/android/dbflow/c/c$4;->a:Lcom/raizlabs/android/dbflow/c/c;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/c/c;->a(Lcom/raizlabs/android/dbflow/c/c;)Lcom/raizlabs/android/dbflow/structure/b/a/g$b;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/raizlabs/android/dbflow/structure/b/a/g$b;->onError(Lcom/raizlabs/android/dbflow/structure/b/a/g;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
