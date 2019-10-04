.class public final Lc/e/a/a/j/d/e;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lc/e/a/a/j/d/g;


# instance fields
.field public final a:Lc/e/a/a/n/j$a;


# direct methods
.method public constructor <init>(Lc/e/a/a/n/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/j/d/e;->a:Lc/e/a/a/n/j$a;

    return-void
.end method


# virtual methods
.method public a(I)Lc/e/a/a/n/j;
    .locals 0

    .line 1
    iget-object p1, p0, Lc/e/a/a/j/d/e;->a:Lc/e/a/a/n/j$a;

    invoke-interface {p1}, Lc/e/a/a/n/j$a;->a()Lc/e/a/a/n/j;

    move-result-object p1

    return-object p1
.end method
