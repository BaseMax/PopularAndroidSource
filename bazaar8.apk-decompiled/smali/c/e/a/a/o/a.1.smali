.class public final synthetic Lc/e/a/a/o/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/o/l$b;

.field private final synthetic b:Lc/e/a/a/o/l$a;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/o/l$b;Lc/e/a/a/o/l$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/o/a;->a:Lc/e/a/a/o/l$b;

    iput-object p2, p0, Lc/e/a/a/o/a;->b:Lc/e/a/a/o/l$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/o/a;->a:Lc/e/a/a/o/l$b;

    iget-object v1, p0, Lc/e/a/a/o/a;->b:Lc/e/a/a/o/l$a;

    invoke-virtual {v0, v1}, Lc/e/a/a/o/l$b;->b(Lc/e/a/a/o/l$a;)V

    return-void
.end method
