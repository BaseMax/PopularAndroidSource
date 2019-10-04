.class public final enum Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;
.super Ljava/lang/Enum;
.source "AddressInputInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AddressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADDRESS:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

.field public static final synthetic a:[Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    const/4 v1, 0x0

    const-string v2, "ADDRESS"

    const-string v3, "address"

    invoke-direct {v0, v2, v1, v3}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->ADDRESS:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    sget-object v2, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->ADDRESS:Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    aput-object v2, v0, v1

    sput-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->a:[Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->value:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;
    .locals 5

    .line 1
    invoke-static {}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->values()[Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;
    .locals 1

    .line 1
    const-class v0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    return-object p0
.end method

.method public static values()[Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;
    .locals 1

    .line 1
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->a:[Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    invoke-virtual {v0}, [Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    return-object v0
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;->value:Ljava/lang/String;

    return-object v0
.end method
