.class public final Li/a/c/e;
.super Ljava/lang/Object;
.source "Scopes.kt"

# interfaces
.implements Li/a/H;


# instance fields
.field public final a:Lh/c/e;


# direct methods
.method public constructor <init>(Lh/c/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/a/c/e;->a:Lh/c/e;

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/c/e;->a:Lh/c/e;

    return-object v0
.end method
