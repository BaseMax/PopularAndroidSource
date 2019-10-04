.class public final synthetic Lc/e/a/a/n/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lc/e/a/a/o/l$a;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:J

.field private final synthetic c:J


# direct methods
.method public synthetic constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lc/e/a/a/n/a;->a:I

    iput-wide p2, p0, Lc/e/a/a/n/a;->b:J

    iput-wide p4, p0, Lc/e/a/a/n/a;->c:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lc/e/a/a/n/a;->a:I

    iget-wide v1, p0, Lc/e/a/a/n/a;->b:J

    iget-wide v3, p0, Lc/e/a/a/n/a;->c:J

    move-object v5, p1

    check-cast v5, Lc/e/a/a/n/f$a;

    invoke-static/range {v0 .. v5}, Lc/e/a/a/n/o;->a(IJJLc/e/a/a/n/f$a;)V

    return-void
.end method
