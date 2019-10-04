.class public Lc/e/c/b/u$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"

# interfaces
.implements Lc/e/c/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/c/b/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Lc/e/c/c/c;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lc/e/c/c/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Lc/e/c/c/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/c/b/u$a;->a:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Lc/e/c/b/u$a;->b:Lc/e/c/c/c;

    return-void
.end method
