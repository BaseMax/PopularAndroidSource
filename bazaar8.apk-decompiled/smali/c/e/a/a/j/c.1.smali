.class public final synthetic Lc/e/a/a/j/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/j/w$a;

.field private final synthetic b:Lc/e/a/a/j/w;

.field private final synthetic c:Lc/e/a/a/j/w$b;

.field private final synthetic d:Lc/e/a/a/j/w$c;

.field private final synthetic e:Ljava/io/IOException;

.field private final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/j/w$a;Lc/e/a/a/j/w;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/c;->a:Lc/e/a/a/j/w$a;

    iput-object p2, p0, Lc/e/a/a/j/c;->b:Lc/e/a/a/j/w;

    iput-object p3, p0, Lc/e/a/a/j/c;->c:Lc/e/a/a/j/w$b;

    iput-object p4, p0, Lc/e/a/a/j/c;->d:Lc/e/a/a/j/w$c;

    iput-object p5, p0, Lc/e/a/a/j/c;->e:Ljava/io/IOException;

    iput-boolean p6, p0, Lc/e/a/a/j/c;->f:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lc/e/a/a/j/c;->a:Lc/e/a/a/j/w$a;

    iget-object v1, p0, Lc/e/a/a/j/c;->b:Lc/e/a/a/j/w;

    iget-object v2, p0, Lc/e/a/a/j/c;->c:Lc/e/a/a/j/w$b;

    iget-object v3, p0, Lc/e/a/a/j/c;->d:Lc/e/a/a/j/w$c;

    iget-object v4, p0, Lc/e/a/a/j/c;->e:Ljava/io/IOException;

    iget-boolean v5, p0, Lc/e/a/a/j/c;->f:Z

    invoke-virtual/range {v0 .. v5}, Lc/e/a/a/j/w$a;->a(Lc/e/a/a/j/w;Lc/e/a/a/j/w$b;Lc/e/a/a/j/w$c;Ljava/io/IOException;Z)V

    return-void
.end method
