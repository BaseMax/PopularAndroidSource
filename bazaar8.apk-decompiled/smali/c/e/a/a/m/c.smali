.class public final synthetic Lc/e/a/a/m/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lc/e/a/a/m/g;


# direct methods
.method public synthetic constructor <init>(Lc/e/a/a/m/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/a/a/m/c;->a:Lc/e/a/a/m/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/e/a/a/m/c;->a:Lc/e/a/a/m/g;

    invoke-virtual {v0}, Lc/e/a/a/m/g;->j()V

    return-void
.end method
