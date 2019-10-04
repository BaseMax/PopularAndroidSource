.class public final synthetic Lc/e/a/a/m/a/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field private final synthetic a:Lc/e/a/a/m/a/f;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/m/a/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/m/a/a;->a:Lc/e/a/a/m/a/f;

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lc/e/a/a/m/a/a;->a:Lc/e/a/a/m/a/f;

    invoke-virtual {v0, p1}, Lc/e/a/a/m/a/f;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
