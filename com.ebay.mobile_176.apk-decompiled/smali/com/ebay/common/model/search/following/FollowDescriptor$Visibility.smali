.class public final enum Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;
.super Ljava/lang/Enum;
.source "FollowDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/search/following/FollowDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

.field public static final enum PRIVATE:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

.field public static final enum PUBLIC:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    const-string v1, "PUBLIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->PUBLIC:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    .line 28
    new-instance v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    const-string v1, "PRIVATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->PRIVATE:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    const/4 v0, 0x2

    .line 25
    new-array v0, v0, [Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    sget-object v1, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->PUBLIC:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->PRIVATE:Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->$VALUES:[Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;
    .locals 1

    .line 25
    const-class v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;
    .locals 1

    .line 25
    sget-object v0, Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->$VALUES:[Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    invoke-virtual {v0}, [Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/model/search/following/FollowDescriptor$Visibility;

    return-object v0
.end method
