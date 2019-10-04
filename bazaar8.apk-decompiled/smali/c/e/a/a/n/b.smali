.class public final synthetic Lc/e/a/a/n/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/n/o$b;

.field private final synthetic b:Lc/e/a/a/n/o;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/n/o$b;Lc/e/a/a/n/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/n/b;->a:Lc/e/a/a/n/o$b;

    iput-object p2, p0, Lc/e/a/a/n/b;->b:Lc/e/a/a/n/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/n/b;->a:Lc/e/a/a/n/o$b;

    iget-object v1, p0, Lc/e/a/a/n/b;->b:Lc/e/a/a/n/o;

    invoke-virtual {v0, v1}, Lc/e/a/a/n/o$b;->a(Lc/e/a/a/n/o;)V

    return-void
.end method
