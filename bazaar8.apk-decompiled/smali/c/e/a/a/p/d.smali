.class public final synthetic Lc/e/a/a/p/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/p/s$a;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:J

.field private final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/p/s$a;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/p/d;->a:Lc/e/a/a/p/s$a;

    iput-object p2, p0, Lc/e/a/a/p/d;->b:Ljava/lang/String;

    iput-wide p3, p0, Lc/e/a/a/p/d;->c:J

    iput-wide p5, p0, Lc/e/a/a/p/d;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lc/e/a/a/p/d;->a:Lc/e/a/a/p/s$a;

    iget-object v1, p0, Lc/e/a/a/p/d;->b:Ljava/lang/String;

    iget-wide v2, p0, Lc/e/a/a/p/d;->c:J

    iget-wide v4, p0, Lc/e/a/a/p/d;->d:J

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/p/s$a;->b(Ljava/lang/String;JJ)V

    return-void
.end method
