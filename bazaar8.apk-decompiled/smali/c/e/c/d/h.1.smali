.class public final synthetic Lc/e/c/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lc/e/c/d/f;


# direct methods
.method public constructor <init>(Lc/e/c/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/d/h;->a:Lc/e/c/d/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lc/e/c/d/h;->a:Lc/e/c/d/f;

    invoke-virtual {v0}, Lc/e/c/d/f;->a()V

    return-void
.end method
