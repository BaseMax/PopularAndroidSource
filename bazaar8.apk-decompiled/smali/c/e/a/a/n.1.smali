.class public final synthetic Lc/e/a/a/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/B;

.field private final synthetic b:Lc/e/a/a/O;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/B;Lc/e/a/a/O;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/n;->a:Lc/e/a/a/B;

    iput-object p2, p0, Lc/e/a/a/n;->b:Lc/e/a/a/O;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/n;->a:Lc/e/a/a/B;

    iget-object v1, p0, Lc/e/a/a/n;->b:Lc/e/a/a/O;

    invoke-virtual {v0, v1}, Lc/e/a/a/B;->c(Lc/e/a/a/O;)V

    return-void
.end method
