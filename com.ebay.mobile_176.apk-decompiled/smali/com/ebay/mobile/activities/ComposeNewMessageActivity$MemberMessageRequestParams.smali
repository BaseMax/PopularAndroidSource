.class public Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
.super Ljava/lang/Object;
.source "ComposeNewMessageActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/activities/ComposeNewMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberMessageRequestParams"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private body:Ljava/lang/String;

.field private inlineReplyText:Ljava/lang/String;

.field private isBuyerMessage:Z

.field private item:Lcom/ebay/nautilus/domain/data/EbayItem;

.field private itemId:Ljava/lang/Long;

.field private parentMessageId:Ljava/lang/String;

.field private pictureUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

.field private recipient:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private trackingData:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 968
    new-instance v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams$1;

    invoke-direct {v0}, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 759
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;->values()[Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    move-result-object v2

    aget-object v0, v2, v0

    :goto_0
    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_1

    .line 761
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->recipient:Ljava/lang/String;

    .line 763
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->body:Ljava/lang/String;

    .line 764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->subject:Ljava/lang/String;

    .line 765
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->inlineReplyText:Ljava/lang/String;

    .line 766
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->parentMessageId:Ljava/lang/String;

    .line 767
    const-class v0, Lcom/ebay/nautilus/domain/data/EbayItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/EbayItem;

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->item:Lcom/ebay/nautilus/domain/data/EbayItem;

    .line 768
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->pictureUrls:Ljava/util/ArrayList;

    .line 769
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->isBuyerMessage:Z

    .line 770
    const-class v0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->trackingData:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    .line 750
    iput-object p2, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->recipient:Ljava/lang/String;

    .line 751
    iput-object p3, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->body:Ljava/lang/String;

    .line 752
    sget-object p1, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;->General:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    .line 753
    iput-boolean p4, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->isBuyerMessage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->body:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->subject:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->inlineReplyText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->recipient:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Z
    .locals 0

    .line 733
    iget-boolean p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->isBuyerMessage:Z

    return p0
.end method

.method static synthetic access$500(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/Long;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/util/ArrayList;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->pictureUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;)Ljava/lang/String;
    .locals 0

    .line 733
    iget-object p0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->parentMessageId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getInlineReplyText()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->inlineReplyText:Ljava/lang/String;

    return-object v0
.end method

.method public getItem()Lcom/ebay/nautilus/domain/data/EbayItem;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->item:Lcom/ebay/nautilus/domain/data/EbayItem;

    return-object v0
.end method

.method public getItemId()Ljava/lang/Long;
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    return-object v0
.end method

.method public getParentMessageId()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->parentMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrls()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 818
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->pictureUrls:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 802
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingData()Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->trackingData:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    return-object v0
.end method

.method public isBuyerMessage()Z
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->isBuyerMessage:Z

    return v0
.end method

.method public setBody(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 903
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->body:Ljava/lang/String;

    return-object p0
.end method

.method public setInlineReplyText(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 868
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->inlineReplyText:Ljava/lang/String;

    return-object p0
.end method

.method public setItem(Lcom/ebay/nautilus/domain/data/EbayItem;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->item:Lcom/ebay/nautilus/domain/data/EbayItem;

    return-object p0
.end method

.method public setItemId(Ljava/lang/Long;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 912
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    return-object p0
.end method

.method public setParentMessageId(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->parentMessageId:Ljava/lang/String;

    return-object p0
.end method

.method public setPictureUrls(Ljava/util/ArrayList;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;"
        }
    .end annotation

    .line 877
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->pictureUrls:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setQuestionType(Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    return-object p0
.end method

.method public setRecipient(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 930
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->recipient:Ljava/lang/String;

    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 859
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->subject:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackingData(Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;)Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->trackingData:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 952
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->questionType:Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/net/api/trading/messages/AddMemberMessageAAQRequest$QuestionType;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 953
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    if-nez v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->itemId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 954
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->recipient:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 957
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->inlineReplyText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->parentMessageId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 959
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->item:Lcom/ebay/nautilus/domain/data/EbayItem;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 960
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->pictureUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 961
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->isBuyerMessage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    iget-object v0, p0, Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageRequestParams;->trackingData:Lcom/ebay/mobile/activities/ComposeNewMessageActivity$MemberMessageTrackingInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
