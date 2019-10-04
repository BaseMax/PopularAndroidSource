.class public final synthetic Lc/e/c/b/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"

# interfaces
.implements Lc/e/c/b/i;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/e/c/b/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lc/e/c/b/i;
    .locals 1

    new-instance v0, Lc/e/c/b/c;

    invoke-direct {v0, p0}, Lc/e/c/b/c;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(Lc/e/c/b/f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc/e/c/b/c;->a:Ljava/lang/Object;

    invoke-static {v0, p1}, Lc/e/c/b/e;->a(Ljava/lang/Object;Lc/e/c/b/f;)Ljava/lang/Object;

    return-object v0
.end method
