.class public final synthetic Lc/e/c/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final a:Lc/e/c/g/g;


# direct methods
.method public constructor <init>(Lc/e/c/g/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/g/f;->a:Lc/e/c/g/g;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/e/c/g/f;->a:Lc/e/c/g/g;

    invoke-virtual {v0}, Lc/e/c/g/g;->t()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
