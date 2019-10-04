.class public final Lh/c/c$b;
.super Ljava/lang/Object;
.source "ContinuationInterceptor.kt"

# interfaces
.implements Lh/c/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/c/e$c<",
        "Lh/c/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Lh/c/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lh/c/c$b;

    invoke-direct {v0}, Lh/c/c$b;-><init>()V

    sput-object v0, Lh/c/c$b;->a:Lh/c/c$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
