.class public Landroid/nfc/TechListParcel;
.super Ljava/lang/Object;
.source "TechListParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/TechListParcel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/TechListParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTechLists:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/nfc/TechListParcel$1;

    invoke-direct {v0}, Landroid/nfc/TechListParcel$1;-><init>()V

    sput-object v0, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public varargs constructor <init>([[Ljava/lang/String;)V
    .locals 0
    .param p1, "strings"    # [[Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/TechListParcel;->mTechLists:[[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getTechLists()[[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/nfc/TechListParcel;->mTechLists:[[Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v3, p0, Landroid/nfc/TechListParcel;->mTechLists:[[Ljava/lang/String;

    array-length v0, v3

    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Landroid/nfc/TechListParcel;->mTechLists:[[Ljava/lang/String;

    aget-object v2, v3, v1

    .local v2, "techList":[Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "techList":[Ljava/lang/String;
    :cond_0
    return-void
.end method
