.class public final enum Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;
.super Ljava/lang/Enum;
.source "Puller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ux/flow/pull/Puller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Frequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

.field public static final enum medium:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

.field public static final enum rapid:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

.field public static final enum slow:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;


# instance fields
.field public milliseconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    const/4 v1, 0x0

    const-string v2, "rapid"

    const/16 v3, 0x7d0

    invoke-direct {v0, v2, v1, v3}, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->rapid:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    const/4 v2, 0x1

    const-string v3, "medium"

    const/16 v4, 0x2710

    invoke-direct {v0, v3, v2, v4}, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->medium:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    const/4 v3, 0x2

    const-string v4, "slow"

    const/16 v5, 0x7530

    invoke-direct {v0, v4, v3, v5}, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->slow:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    sget-object v4, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->rapid:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    aput-object v4, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->medium:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->slow:Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    aput-object v1, v0, v3

    sput-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->a:[Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->milliseconds:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->a:[Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;

    return-object v0
.end method


# virtual methods
.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lir/cafebazaar/inline/ux/flow/pull/Puller$Frequency;->milliseconds:I

    return v0
.end method
