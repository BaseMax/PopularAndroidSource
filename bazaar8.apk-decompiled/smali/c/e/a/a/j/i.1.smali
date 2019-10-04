.class public final synthetic Lc/e/a/a/j/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/j/w$a;

.field private final synthetic b:Lc/e/a/a/j/w;

.field private final synthetic c:Lc/e/a/a/j/v$a;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/j/w$a;Lc/e/a/a/j/w;Lc/e/a/a/j/v$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/i;->a:Lc/e/a/a/j/w$a;

    iput-object p2, p0, Lc/e/a/a/j/i;->b:Lc/e/a/a/j/w;

    iput-object p3, p0, Lc/e/a/a/j/i;->c:Lc/e/a/a/j/v$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/e/a/a/j/i;->a:Lc/e/a/a/j/w$a;

    iget-object v1, p0, Lc/e/a/a/j/i;->b:Lc/e/a/a/j/w;

    iget-object v2, p0, Lc/e/a/a/j/i;->c:Lc/e/a/a/j/v$a;

    invoke-virtual {v0, v1, v2}, Lc/e/a/a/j/w$a;->c(Lc/e/a/a/j/w;Lc/e/a/a/j/v$a;)V

    return-void
.end method
