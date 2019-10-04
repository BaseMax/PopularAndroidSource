.class public final Lc/e/a/b/h/b/Ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Lc/e/a/b/h/b/a;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/Ba;->b:Lc/e/a/b/h/b/a;

    iput-wide p2, p0, Lc/e/a/b/h/b/Ba;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/Ba;->b:Lc/e/a/b/h/b/a;

    iget-wide v1, p0, Lc/e/a/b/h/b/Ba;->a:J

    invoke-static {v0, v1, v2}, Lc/e/a/b/h/b/a;->a(Lc/e/a/b/h/b/a;J)V

    return-void
.end method
