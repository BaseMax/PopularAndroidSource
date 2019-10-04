.class public final Lc/e/a/b/h/b/I;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public c:Z

.field public d:J

.field public final synthetic e:Lc/e/a/b/h/b/F;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/F;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/I;->e:Lc/e/a/b/h/b/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lc/e/a/b/d/d/r;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lc/e/a/b/h/b/I;->a:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lc/e/a/b/h/b/I;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lc/e/a/b/h/b/I;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/e/a/b/h/b/I;->c:Z

    .line 3
    iget-object v0, p0, Lc/e/a/b/h/b/I;->e:Lc/e/a/b/h/b/F;

    invoke-static {v0}, Lc/e/a/b/h/b/F;->a(Lc/e/a/b/h/b/F;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lc/e/a/b/h/b/I;->a:Ljava/lang/String;

    iget-wide v2, p0, Lc/e/a/b/h/b/I;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lc/e/a/b/h/b/I;->d:J

    .line 4
    :cond_0
    iget-wide v0, p0, Lc/e/a/b/h/b/I;->d:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 2

    .line 5
    iget-object v0, p0, Lc/e/a/b/h/b/I;->e:Lc/e/a/b/h/b/F;

    invoke-static {v0}, Lc/e/a/b/h/b/F;->a(Lc/e/a/b/h/b/F;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lc/e/a/b/h/b/I;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    iput-wide p1, p0, Lc/e/a/b/h/b/I;->d:J

    return-void
.end method
