.class public final Lc/e/a/b/g/f/q;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Lc/e/a/b/h/b/Da;

.field public final synthetic f:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Lc/e/a/b/h/b/Da;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/q;->f:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/q;->e:Lc/e/a/b/h/b/Da;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/q;->f:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->d(Lc/e/a/b/g/f/b;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/g/f/q;->e:Lc/e/a/b/h/b/Da;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/e/a/b/g/f/q;->f:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->b(Lc/e/a/b/g/f/b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnEventListener already registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Lc/e/a/b/g/f/b$b;

    iget-object v1, p0, Lc/e/a/b/g/f/q;->e:Lc/e/a/b/h/b/Da;

    invoke-direct {v0, v1}, Lc/e/a/b/g/f/b$b;-><init>(Lc/e/a/b/h/b/Da;)V

    .line 4
    iget-object v1, p0, Lc/e/a/b/g/f/q;->f:Lc/e/a/b/g/f/b;

    invoke-static {v1}, Lc/e/a/b/g/f/b;->d(Lc/e/a/b/g/f/b;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lc/e/a/b/g/f/q;->e:Lc/e/a/b/h/b/Da;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lc/e/a/b/g/f/q;->f:Lc/e/a/b/g/f/b;

    invoke-static {v1}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v1

    invoke-interface {v1, v0}, Lc/e/a/b/g/f/cd;->registerOnMeasurementEventListener(Lc/e/a/b/g/f/id;)V

    return-void
.end method
