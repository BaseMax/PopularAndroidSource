.class public final Lc/e/a/b/h/b/Ia;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:J

.field public final synthetic e:Lc/e/a/b/h/b/Fa;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/Fa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ia;->e:Lc/e/a/b/h/b/Fa;

    iput-object p2, p0, Lc/e/a/b/h/b/Ia;->a:Ljava/lang/String;

    iput-object p3, p0, Lc/e/a/b/h/b/Ia;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/Ia;->c:Ljava/lang/Object;

    iput-wide p5, p0, Lc/e/a/b/h/b/Ia;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ia;->e:Lc/e/a/b/h/b/Fa;

    iget-object v1, p0, Lc/e/a/b/h/b/Ia;->a:Ljava/lang/String;

    iget-object v2, p0, Lc/e/a/b/h/b/Ia;->b:Ljava/lang/String;

    iget-object v3, p0, Lc/e/a/b/h/b/Ia;->c:Ljava/lang/Object;

    iget-wide v4, p0, Lc/e/a/b/h/b/Ia;->d:J

    invoke-virtual/range {v0 .. v5}, Lc/e/a/b/h/b/Fa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method
