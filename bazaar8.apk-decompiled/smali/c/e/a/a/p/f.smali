.class public final synthetic Lc/e/a/a/p/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/p/s$a;

.field private final synthetic b:Lc/e/a/a/c/e;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/p/s$a;Lc/e/a/a/c/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/p/f;->a:Lc/e/a/a/p/s$a;

    iput-object p2, p0, Lc/e/a/a/p/f;->b:Lc/e/a/a/c/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/p/f;->a:Lc/e/a/a/p/s$a;

    iget-object v1, p0, Lc/e/a/a/p/f;->b:Lc/e/a/a/c/e;

    invoke-virtual {v0, v1}, Lc/e/a/a/p/s$a;->c(Lc/e/a/a/c/e;)V

    return-void
.end method
