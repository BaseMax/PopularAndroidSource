.class public final synthetic Lc/e/a/a/j/d/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/j/d/o$a;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/j/d/o$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/j/d/a;->a:Lc/e/a/a/j/d/o$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/e/a/a/j/d/a;->a:Lc/e/a/a/j/d/o$a;

    invoke-interface {v0}, Lc/e/a/a/j/d/o$a;->a()V

    return-void
.end method
