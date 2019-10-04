.class public final Lcom/facebook/b/e;
.super Lcom/facebook/b/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/b/e$b;,
        Lcom/facebook/b/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/facebook/b/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/facebook/b/o$e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/facebook/b/e$a;

    invoke-direct {v0, p0, p0}, Lcom/facebook/b/e$a;-><init>(Lcom/facebook/b/e;Lcom/facebook/b/o;)V

    return-object v0
.end method
