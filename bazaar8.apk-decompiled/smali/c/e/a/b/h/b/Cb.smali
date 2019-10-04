.class public final Lc/e/a/b/h/b/Cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc/e/a/b/h/b/xb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/xb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Cb;->a:Lc/e/a/b/h/b/xb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Cb;->a:Lc/e/a/b/h/b/xb;

    iget-object v0, v0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    new-instance v1, Landroid/content/ComponentName;

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/ua;->b()Landroid/content/Context;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lc/e/a/b/h/b/Cb;->a:Lc/e/a/b/h/b/xb;

    iget-object v3, v3, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    invoke-virtual {v3}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const-string v3, "com.google.android.gms.measurement.AppMeasurementService"

    .line 4
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v1}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/gb;Landroid/content/ComponentName;)V

    return-void
.end method
