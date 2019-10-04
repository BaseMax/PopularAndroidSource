.class public final Lc/e/a/b/d/a/a/G;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/signin/internal/zaj;

.field public final synthetic b:Lc/e/a/b/d/a/a/E;


# direct methods
.method public constructor <init>(Lc/e/a/b/d/a/a/E;Lcom/google/android/gms/signin/internal/zaj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/d/a/a/G;->b:Lc/e/a/b/d/a/a/E;

    iput-object p2, p0, Lc/e/a/b/d/a/a/G;->a:Lcom/google/android/gms/signin/internal/zaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/G;->b:Lc/e/a/b/d/a/a/E;

    iget-object v1, p0, Lc/e/a/b/d/a/a/G;->a:Lcom/google/android/gms/signin/internal/zaj;

    invoke-static {v0, v1}, Lc/e/a/b/d/a/a/E;->a(Lc/e/a/b/d/a/a/E;Lcom/google/android/gms/signin/internal/zaj;)V

    return-void
.end method
