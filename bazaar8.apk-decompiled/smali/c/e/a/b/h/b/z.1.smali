.class public final Lc/e/a/b/h/b/z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lc/e/a/b/h/b/a;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/a;Ljava/lang/String;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/z;->c:Lc/e/a/b/h/b/a;

    iput-object p2, p0, Lc/e/a/b/h/b/z;->a:Ljava/lang/String;

    iput-wide p3, p0, Lc/e/a/b/h/b/z;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/z;->c:Lc/e/a/b/h/b/a;

    iget-object v1, p0, Lc/e/a/b/h/b/z;->a:Ljava/lang/String;

    iget-wide v2, p0, Lc/e/a/b/h/b/z;->b:J

    invoke-static {v0, v1, v2, v3}, Lc/e/a/b/h/b/a;->a(Lc/e/a/b/h/b/a;Ljava/lang/String;J)V

    return-void
.end method
