.class public final Lc/b/a/c/d/e/i;
.super Ljava/lang/Object;
.source "GifOptions.java"


# static fields
.field public static final a:Lc/b/a/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e<",
            "Lcom/bumptech/glide/load/DecodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lc/b/a/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v1, v0}, Lc/b/a/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/b/a/c/e;

    move-result-object v0

    sput-object v0, Lc/b/a/c/d/e/i;->a:Lc/b/a/c/e;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    .line 3
    invoke-static {v1, v0}, Lc/b/a/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/b/a/c/e;

    move-result-object v0

    sput-object v0, Lc/b/a/c/d/e/i;->b:Lc/b/a/c/e;

    return-void
.end method
