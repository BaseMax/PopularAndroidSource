.class public final synthetic Lc/e/a/a/b/d;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/b/q$a;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/b/q$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/b/d;->a:Lc/e/a/a/b/q$a;

    iput p2, p0, Lc/e/a/a/b/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/b/d;->a:Lc/e/a/a/b/q$a;

    iget v1, p0, Lc/e/a/a/b/d;->b:I

    invoke-virtual {v0, v1}, Lc/e/a/a/b/q$a;->b(I)V

    return-void
.end method
