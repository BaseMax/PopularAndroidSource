.class public final Lc/e/a/b/g/f/f;
.super Lc/e/a/b/g/f/b$a;


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lc/e/a/b/g/f/b;


# direct methods
.method public constructor <init>(Lc/e/a/b/g/f/b;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/g/f/f;->h:Lc/e/a/b/g/f/b;

    iput-object p2, p0, Lc/e/a/b/g/f/f;->e:Landroid/app/Activity;

    iput-object p3, p0, Lc/e/a/b/g/f/f;->f:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/g/f/f;->g:Ljava/lang/String;

    invoke-direct {p0, p1}, Lc/e/a/b/g/f/b$a;-><init>(Lc/e/a/b/g/f/b;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/f/f;->h:Lc/e/a/b/g/f/b;

    invoke-static {v0}, Lc/e/a/b/g/f/b;->c(Lc/e/a/b/g/f/b;)Lc/e/a/b/g/f/cd;

    move-result-object v1

    iget-object v0, p0, Lc/e/a/b/g/f/f;->e:Landroid/app/Activity;

    .line 2
    invoke-static {v0}, Lc/e/a/b/e/b;->a(Ljava/lang/Object;)Lc/e/a/b/e/a;

    move-result-object v2

    iget-object v3, p0, Lc/e/a/b/g/f/f;->f:Ljava/lang/String;

    iget-object v4, p0, Lc/e/a/b/g/f/f;->g:Ljava/lang/String;

    iget-wide v5, p0, Lc/e/a/b/g/f/b$a;->a:J

    .line 3
    invoke-interface/range {v1 .. v6}, Lc/e/a/b/g/f/cd;->setCurrentScreen(Lc/e/a/b/e/a;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
