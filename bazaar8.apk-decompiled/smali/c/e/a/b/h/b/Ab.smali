.class public final Lc/e/a/b/h/b/Ab;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/ComponentName;

.field public final synthetic b:Lc/e/a/b/h/b/xb;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/xb;Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ab;->b:Lc/e/a/b/h/b/xb;

    iput-object p2, p0, Lc/e/a/b/h/b/Ab;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ab;->b:Lc/e/a/b/h/b/xb;

    iget-object v0, v0, Lc/e/a/b/h/b/xb;->c:Lc/e/a/b/h/b/gb;

    iget-object v1, p0, Lc/e/a/b/h/b/Ab;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lc/e/a/b/h/b/gb;->a(Lc/e/a/b/h/b/gb;Landroid/content/ComponentName;)V

    return-void
.end method
