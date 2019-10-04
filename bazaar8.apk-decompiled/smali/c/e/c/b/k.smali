.class public final synthetic Lc/e/c/b/k;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"

# interfaces
.implements Lc/e/c/e/a;


# instance fields
.field public final a:Lc/e/c/b/n;

.field public final b:Lc/e/c/b/e;


# direct methods
.method public constructor <init>(Lc/e/c/b/n;Lc/e/c/b/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/b/k;->a:Lc/e/c/b/n;

    iput-object p2, p0, Lc/e/c/b/k;->b:Lc/e/c/b/e;

    return-void
.end method

.method public static a(Lc/e/c/b/n;Lc/e/c/b/e;)Lc/e/c/e/a;
    .locals 1

    new-instance v0, Lc/e/c/b/k;

    invoke-direct {v0, p0, p1}, Lc/e/c/b/k;-><init>(Lc/e/c/b/n;Lc/e/c/b/e;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lc/e/c/b/k;->a:Lc/e/c/b/n;

    iget-object v1, p0, Lc/e/c/b/k;->b:Lc/e/c/b/e;

    invoke-static {v0, v1}, Lc/e/c/b/n;->a(Lc/e/c/b/n;Lc/e/c/b/e;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
