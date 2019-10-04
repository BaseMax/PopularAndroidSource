.class public final enum Lir/cafebazaar/inline/ux/prefill/PrefillDomain;
.super Ljava/lang/Enum;
.source "PrefillDomain.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ux/prefill/PrefillDomain;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

.field public static final enum application:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

.field public static final enum global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

.field public static final enum page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

.field public static final enum session:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    const/4 v1, 0x0

    const-string v2, "page"

    invoke-direct {v0, v2, v1}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    .line 2
    new-instance v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    const/4 v2, 0x1

    const-string v3, "session"

    invoke-direct {v0, v3, v2}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->session:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    .line 3
    new-instance v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    const/4 v3, 0x2

    const-string v4, "application"

    invoke-direct {v0, v4, v3}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->application:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    .line 4
    new-instance v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    const/4 v4, 0x3

    const-string v5, "global"

    invoke-direct {v0, v5, v4}, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    sget-object v5, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    aput-object v5, v0, v1

    sget-object v1, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->session:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    aput-object v1, v0, v2

    sget-object v1, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->application:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    aput-object v1, v0, v3

    sget-object v1, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->global:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    aput-object v1, v0, v4

    sput-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->a:[Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ux/prefill/PrefillDomain;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ux/prefill/PrefillDomain;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->a:[Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0
.end method


# virtual methods
.method public a(Lir/cafebazaar/inline/ux/prefill/PrefillDomain;)Z
    .locals 4

    .line 1
    sget-object v0, Lf/a/a/g/h/a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return v3

    .line 2
    :cond_0
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-ne p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 3
    :cond_2
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-eq p1, v0, :cond_3

    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->session:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-ne p1, v0, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2

    .line 4
    :cond_5
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-eq p1, v0, :cond_6

    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->session:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-eq p1, v0, :cond_6

    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->application:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    if-ne p1, v0, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public f()Lir/cafebazaar/inline/ux/prefill/PrefillDomain;
    .locals 2

    .line 1
    sget-object v0, Lf/a/a/g/h/a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->page:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0

    .line 4
    :cond_1
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->session:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0

    .line 5
    :cond_2
    sget-object v0, Lir/cafebazaar/inline/ux/prefill/PrefillDomain;->application:Lir/cafebazaar/inline/ux/prefill/PrefillDomain;

    return-object v0
.end method
