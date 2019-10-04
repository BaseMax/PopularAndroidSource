.class public final synthetic Lc/e/a/a/m/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/m/a/h;

.field private final synthetic b:Landroid/graphics/SurfaceTexture;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/m/a/h;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/m/a/b;->a:Lc/e/a/a/m/a/h;

    iput-object p2, p0, Lc/e/a/a/m/a/b;->b:Landroid/graphics/SurfaceTexture;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/m/a/b;->a:Lc/e/a/a/m/a/h;

    iget-object v1, p0, Lc/e/a/a/m/a/b;->b:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lc/e/a/a/m/a/h;->a(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method
