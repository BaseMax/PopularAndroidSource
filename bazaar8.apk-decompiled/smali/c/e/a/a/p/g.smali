.class public final synthetic Lc/e/a/a/p/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/p/s$a;

.field private final synthetic b:I

.field private final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/p/s$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/p/g;->a:Lc/e/a/a/p/s$a;

    iput p2, p0, Lc/e/a/a/p/g;->b:I

    iput-wide p3, p0, Lc/e/a/a/p/g;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/e/a/a/p/g;->a:Lc/e/a/a/p/s$a;

    iget v1, p0, Lc/e/a/a/p/g;->b:I

    iget-wide v2, p0, Lc/e/a/a/p/g;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/a/p/s$a;->b(IJ)V

    return-void
.end method
