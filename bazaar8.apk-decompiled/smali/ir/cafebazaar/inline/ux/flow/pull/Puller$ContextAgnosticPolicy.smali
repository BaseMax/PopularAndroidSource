.class public final enum Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;
.super Ljava/lang/Enum;
.source "Puller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/flow/pull/Puller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextAgnosticPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

.field public static final enum continuous:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

.field public static final enum once:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;


# instance fields
.field public corePolicy:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    new-instance v1, Lf/a/a/g/d/b/d;

    invoke-direct {v1}, Lf/a/a/g/d/b/d;-><init>()V

    const/4 v2, 0x0

    const-string v3, "continuous"

    invoke-direct {v0, v3, v2, v1}, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;-><init>(Ljava/lang/String;ILir/cafebazaar/inline/ux/flow/pull/Puller$a;)V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->continuous:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    new-instance v1, Lf/a/a/g/d/b/e;

    invoke-direct {v1}, Lf/a/a/g/d/b/e;-><init>()V

    const/4 v3, 0x1

    const-string v4, "once"

    invoke-direct {v0, v4, v3, v1}, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;-><init>(Ljava/lang/String;ILir/cafebazaar/inline/ux/flow/pull/Puller$a;)V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->once:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    sget-object v1, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->continuous:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->once:Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->a:[Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILir/cafebazaar/inline/ux/flow/pull/Puller$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lir/cafebazaar/inline/ux/flow/pull/Puller$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->corePolicy:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->a:[Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;

    return-object v0
.end method


# virtual methods
.method public f()Lir/cafebazaar/inline/ux/flow/pull/Puller$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller$ContextAgnosticPolicy;->corePolicy:Lir/cafebazaar/inline/ux/flow/pull/Puller$a;

    return-object v0
.end method
