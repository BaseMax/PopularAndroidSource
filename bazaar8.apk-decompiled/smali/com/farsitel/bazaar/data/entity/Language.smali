.class public final enum Lcom/farsitel/bazaar/data/entity/Language;
.super Ljava/lang/Enum;
.source "RequestPropertiesEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/entity/Language$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/entity/Language;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/farsitel/bazaar/data/entity/Language;

.field public static final Companion:Lcom/farsitel/bazaar/data/entity/Language$Companion;

.field public static final enum ENGLISH:Lcom/farsitel/bazaar/data/entity/Language;

.field public static final enum PERSIAN:Lcom/farsitel/bazaar/data/entity/Language;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/farsitel/bazaar/data/entity/Language;

    new-instance v2, Lcom/farsitel/bazaar/data/entity/Language;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "ENGLISH"

    .line 1
    invoke-direct {v2, v5, v3, v4}, Lcom/farsitel/bazaar/data/entity/Language;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/farsitel/bazaar/data/entity/Language;->ENGLISH:Lcom/farsitel/bazaar/data/entity/Language;

    aput-object v2, v1, v3

    new-instance v2, Lcom/farsitel/bazaar/data/entity/Language;

    const-string v3, "PERSIAN"

    .line 2
    invoke-direct {v2, v3, v4, v0}, Lcom/farsitel/bazaar/data/entity/Language;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/farsitel/bazaar/data/entity/Language;->PERSIAN:Lcom/farsitel/bazaar/data/entity/Language;

    aput-object v2, v1, v4

    sput-object v1, Lcom/farsitel/bazaar/data/entity/Language;->$VALUES:[Lcom/farsitel/bazaar/data/entity/Language;

    new-instance v0, Lcom/farsitel/bazaar/data/entity/Language$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/data/entity/Language$Companion;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/data/entity/Language;->Companion:Lcom/farsitel/bazaar/data/entity/Language$Companion;

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

    iput p3, p0, Lcom/farsitel/bazaar/data/entity/Language;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/Language;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/entity/Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/entity/Language;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/entity/Language;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/entity/Language;->$VALUES:[Lcom/farsitel/bazaar/data/entity/Language;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/entity/Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/entity/Language;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/entity/Language;->value:I

    return v0
.end method
