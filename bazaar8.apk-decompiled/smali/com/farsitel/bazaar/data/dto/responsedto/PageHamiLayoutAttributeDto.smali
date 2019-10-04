.class public final Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;
.super Ljava/lang/Object;
.source "FehrestResponseDto.kt"


# instance fields
.field public final background:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "background"
    .end annotation
.end field

.field public final textColor:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "textColor"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;->background:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;->textColor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBackground()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;->background:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextColor()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/dto/responsedto/PageHamiLayoutAttributeDto;->textColor:Ljava/lang/String;

    return-object v0
.end method
