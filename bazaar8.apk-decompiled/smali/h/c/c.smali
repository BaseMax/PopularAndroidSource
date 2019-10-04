.class public interface abstract Lh/c/c;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lh/c/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/c/c$a;,
        Lh/c/c$b;
    }
.end annotation


# static fields
.field public static final c:Lh/c/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lh/c/c$b;->a:Lh/c/c$b;

    sput-object v0, Lh/c/c;->c:Lh/c/c$b;

    return-void
.end method


# virtual methods
.method public abstract b(Lh/c/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract c(Lh/c/b;)Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;)",
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation
.end method
