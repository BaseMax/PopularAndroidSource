.class public final synthetic Lc/e/a/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final synthetic b:Lc/e/a/a/o$b;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lc/e/a/a/b;->b:Lc/e/a/a/o$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc/e/a/a/b;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lc/e/a/a/b;->b:Lc/e/a/a/o$b;

    invoke-static {v0, v1}, Lc/e/a/a/z;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Lc/e/a/a/o$b;)V

    return-void
.end method
