.class public final synthetic Lc/e/a/a/j/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/j/w$a;

.field private final synthetic b:Lc/e/a/a/j/w;

.field private final synthetic c:Lc/e/a/a/j/w$b;

.field private final synthetic d:Lc/e/a/a/j/w$c;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/j/w$a;Lc/e/a/a/j/w;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/j;->a:Lc/e/a/a/j/w$a;

    iput-object p2, p0, Lc/e/a/a/j/j;->b:Lc/e/a/a/j/w;

    iput-object p3, p0, Lc/e/a/a/j/j;->c:Lc/e/a/a/j/w$b;

    iput-object p4, p0, Lc/e/a/a/j/j;->d:Lc/e/a/a/j/w$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/e/a/a/j/j;->a:Lc/e/a/a/j/w$a;

    iget-object v1, p0, Lc/e/a/a/j/j;->b:Lc/e/a/a/j/w;

    iget-object v2, p0, Lc/e/a/a/j/j;->c:Lc/e/a/a/j/w$b;

    iget-object v3, p0, Lc/e/a/a/j/j;->d:Lc/e/a/a/j/w$c;

    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/a/j/w$a;->c(Lc/e/a/a/j/w;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;)V

    return-void
.end method
