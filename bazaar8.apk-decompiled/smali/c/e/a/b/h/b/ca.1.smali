.class public final Lc/e/a/b/h/b/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/zzm;

.field public final synthetic b:Lc/e/a/b/h/b/ba;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/ba;Lcom/google/android/gms/measurement/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/ca;->b:Lc/e/a/b/h/b/ba;

    iput-object p2, p0, Lc/e/a/b/h/b/ca;->a:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/ca;->b:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    invoke-virtual {v0}, Lc/e/a/b/h/b/Tb;->y()V

    .line 2
    iget-object v0, p0, Lc/e/a/b/h/b/ca;->b:Lc/e/a/b/h/b/ba;

    invoke-static {v0}, Lc/e/a/b/h/b/ba;->a(Lc/e/a/b/h/b/ba;)Lc/e/a/b/h/b/Tb;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/ca;->a:Lcom/google/android/gms/measurement/internal/zzm;

    invoke-virtual {v0, v1}, Lc/e/a/b/h/b/Tb;->b(Lcom/google/android/gms/measurement/internal/zzm;)V

    return-void
.end method
